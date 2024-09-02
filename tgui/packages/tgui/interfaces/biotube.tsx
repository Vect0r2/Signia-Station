import { useBackend } from '../backend';
import { Button, LabeledList, Section } from '../components';
import { Window } from '../layouts';

export const biotube = (props, context) => {
  const { act, data } = useBackend(context);
  // Extract `health` and `color` variables from the `data` object.
  const { instability } = data;
  return (
    <Window resizable>
      <Window.Content scrollable>
        <Section title="Instability Status">
          <LabeledList>
            <LabeledList.Item label="Instability">
              {instability}
            </LabeledList.Item>
            <LabeledList.Item label="Reroll instability">
              <Button
                content="Prod with microlasers"
                onClick={() => act('prod')}
              />
            </LabeledList.Item>
          </LabeledList>
        </Section>
      </Window.Content>
    </Window>
  );
};
